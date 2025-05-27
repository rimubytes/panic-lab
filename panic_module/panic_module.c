#include <linux/module.h>
#include <linux/kernel.h>

static int __init panic_module_init(void) {
    printk(KERN_ALERT "Triggering intentional kernel panic...\n");
    panic("Intentional Kernel Panic for Debugging");
    return 0;
}

static void __exit panic_module_exit(void) {
    printk(KERN_INFO "Panic module unloaded.\n");
}

module_init(panic_module_init);
module_exit(panic_module_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Marvin Murithi");
MODULE_DESCRIPTION("A module to trigger an intentional kernel panic");