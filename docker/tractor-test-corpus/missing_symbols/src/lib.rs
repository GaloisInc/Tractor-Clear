use std::alloc::{GlobalAlloc, Layout, System};

#[global_allocator]
static GLOBAL_ALLOCATOR: System = System;

// #[unsafe(no_mangle)]
// pub extern "C" fn __rust_alloc_error_handler(layout_size: usize, _layout_align: usize) -> ! {
//     // you can log or do something with layout_size/layout_align if you have that info
//     // then decide: panic or abort
//     panic!("Failed to allocate {}", layout_size);
// }

#[unsafe(no_mangle)]
pub static __rust_no_alloc_shim_is_unstable: u8 = 0;

#[unsafe(no_mangle)]
pub extern "C" fn _RNvCsdacU1jyOrEE_7___rustc35___rust_no_alloc_shim_is_unstable_v2() {}

#[unsafe(no_mangle)]
pub extern "C" fn _RNvCsdacU1jyOrEE_7___rustc42___rust_alloc_error_handler_should_panic_v2() {}

// #[unsafe(no_mangle)]
// pub extern "C" fn _RNvCs6pHQJ60SlNr_7___rustc26___rust_alloc_error_handler(layout_size: usize, _layout_align: usize) -> ! {
//     // you can log or do something with layout_size/layout_align if you have that info
//     // then decide: panic or abort
//     panic!("Failed to allocate {}", layout_size);
// }

// #[unsafe(no_mangle)]
// pub static _RNvCs6pHQJ60SlNr_7___rustc39___rust_alloc_error_handler_should_panic: u8 = 0;

#[unsafe(no_mangle)]
unsafe extern "C" fn realloc_fallback(
    _alloc: *const System,
    ptr: *mut u8,
    old_layout: Layout,
    new_size: usize,
) -> *mut u8 {
    unsafe {
        // fallback: alloc new, copy, dealloc old
        let new_layout = Layout::from_size_align_unchecked(new_size, old_layout.align());
        let new_ptr = System.alloc(new_layout);
        if !new_ptr.is_null() {
            let copy_size = old_layout.size().min(new_size);
            std::ptr::copy_nonoverlapping(ptr, new_ptr, copy_size);
            System.dealloc(ptr, old_layout);
        }
        new_ptr
    }
}

// This is the symbol when using GNU libc
#[unsafe(no_mangle)]
pub extern "C" fn _ZN3std3sys5alloc16realloc_fallback17h55cf233aa6e61729E(
    alloc: *const System,
    ptr: *mut u8,
    old_layout: Layout,
    new_size: usize,
) -> *mut u8 {
    unsafe { realloc_fallback(alloc, ptr, old_layout, new_size) }
}

// This is the symbol when using musl libc
#[unsafe(no_mangle)]
pub extern "C" fn _ZN3std3sys5alloc16realloc_fallback17h2e6c96668bd4810cE(
    alloc: *const System,
    ptr: *mut u8,
    old_layout: Layout,
    new_size: usize,
) -> *mut u8 {
    unsafe { realloc_fallback(alloc, ptr, old_layout, new_size) }
}
