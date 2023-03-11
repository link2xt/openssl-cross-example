use openssl_sys;

fn main() {
    unsafe {
        openssl_sys::BIO_free_all(std::ptr::null_mut());
    }
}
