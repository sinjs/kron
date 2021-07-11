#![no_std]
#![no_main]
use core::panic::PanicInfo;
mod vga_buffer;

static MESSAGE: &[u8] = b"Hello from Kron!";

#[no_mangle]
pub extern "C" fn _start() -> ! {
    vga_buffer::boot_print();
    loop {}
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
