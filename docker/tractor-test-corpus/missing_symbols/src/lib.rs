use std::alloc::System;

#[global_allocator]
static GLOBAL_ALLOCATOR: System = System;

#[unsafe(no_mangle)]
pub extern "C" fn __rust_alloc_error_handler(layout_size: usize, _layout_align: usize) -> ! {
    // you can log or do something with layout_size/layout_align if you have that info
    // then decide: panic or abort
    panic!("Failed to allocate {}", layout_size);
}

#[unsafe(no_mangle)]
pub static __rust_no_alloc_shim_is_unstable: u8 = 0;

#[unsafe(no_mangle)]
pub extern "C" fn _RNvCs6pHQJ60SlNr_7___rustc26___rust_alloc_error_handler(layout_size: usize, _layout_align: usize) -> ! {
    // you can log or do something with layout_size/layout_align if you have that info
    // then decide: panic or abort
    panic!("Failed to allocate {}", layout_size);
}

#[unsafe(no_mangle)]
pub static _RNvCs6pHQJ60SlNr_7___rustc39___rust_alloc_error_handler_should_panic: u8 = 0;
