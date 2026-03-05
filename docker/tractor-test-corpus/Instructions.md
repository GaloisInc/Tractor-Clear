I would like you to generate some Rust code to append to an existing Rust file, that tests a given
symbol with some given inputs.

The Rust code to be modified (append only) lives under:
`/Users/val/galois/tractor/Tractor-Clear/docker/tractor-test-corpus/crisp-rust-outputs-gpt-5.4-20260311/Public-Tests/B01_organic/`
in separate projects, one per directory there.
Within each project, the file to modify lives under `translated_rust/src/lib.rs`.

I need the test functions to be callable from the FFI, so they need to be `unsafe extern "C"` and to
have either no mangle or a fixed export name.

The symbol under testing would usually match the project name with suffix `_ffi` instead of `_lib`,
for instance `bitwriter_add_ffi`.  It's usually the only fn symbol marked `extern "C"` in the file.

The test inputs are to be found in:
`/Users/val/galois/tractor/Test-Corpus/Public-Tests/B01_organic/<project>/test_vectors`, where `<project>` should match the project directory name from earlier.

They are defined in a JSON file, according to a schema that is defined in a Rust test harness:
`/Users/val/galois/tractor/Test-Corpus/Public-Tests/B01_organic/<project>/runner/src/main.rs`

The details of this file are a bit complicated, but really all we need for this task is:

1. to look at the `state` definition within the `harness!` macro call, which tells us what the
fields stored in the JSON will look like, and,

2. to look at the `run()` function to see how the JSON fields are manipulated to eventually call the
symbol (Note: in the harness, it will look like (*SYMBOL), but we know that the symbol will be
`bitwriter_add_ff` here),

So your plan should be, vaguely, for each project:

0. Check whether the Rust lib already contains all the necessary test symbols, or whether it's
missing some.

1. Read the Rust test harness to understand how the type of the JSON "state" and how to call the
test "SYMBOL".

2. To read, in order, the JSON files in the `test_vectors` directory.

3. For each `<n>.json`, append to the `lib.rs` file a fn symbol `run_test_<n>`, that takes no input
and returns a boolean, and is specialized to exercise exactly the test vector from the JSON file.

More specifically for step 3., the JSON will always have two top-most fields `lib_state_in` and
`lib_state_out`.  You should set it up so that the fields are initialized as in `lib_state_in`, then
the function symbol is called, and finally the boolean result should be comparing the final values
of those variables to the values in `lib_state_out`.

Note that there is a `returns` field in both `lib_state_in` and `lib_state_out`.  You can safely
ignore the one from `lib_state_in`, and you should check that the value returned by the symbol
matches the one in `lib_state_out`.  Also, those fields that are meant to be passed as arguments to
the symbol are meaningless when they appear in `lib_state_out`.

In some sense, the code will look like a specialization of the `run` symbol from the test harness,
specifically for the values in the JSON file.  So no `self.s_val`, instead the `s_val` value from
the JSON.

Here is a vague shape of what the code appended at the end of lib.rs should look like for test
vector `1.json` of library `bitwriter_add_lib`, though make sure it is good Rust:

```rust
#[no_mangle]
pub unsafe extern "C" fn run_test_1() {
    let mut z = 0;
    let mut s = TflacBitwriter {
        val: 1,
        bits: 2,
        pos: 0,
        len: 0,
        tot: 3,
        buffer: &raw mut z as *mut tflac_u8,
    };

    let returns = unsafe {
        bitwriter_add_ffi(
            &raw mut s as *mut TflacBitwriter,
            4,
            5
        )
    };

    returns == 0
        && s.val == 1441151880758558721
        && s.bits == 6
        && s.tot == 7
}
```

Of course, you should find all test vectors in the test vectors directory, so there should be as
many such symbols as there are numbered JSON files in the test_vectors for that project.

Make sure not to modify anything already in `lib.rs`!  You're only appending those functions.

Now, this time, I only want you to do this in two places:
1. In the `ima_parse_lib`, where it seems like some tests are missing, and,
2. I would like you to double-check in `collided_lib` why the second tests is so different than the
   other ones that you generated.  Here, you're allowed to modify the existing `run_test_2` to make
   it more aligned with all the other ones, if possible.
