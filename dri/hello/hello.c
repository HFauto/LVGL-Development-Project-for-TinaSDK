//
// Created by HFauto on 2024/4/14.
//
#include <linux/module.h>
#include <linux/init.h>

static int helloworld_init(void)
{
    printk("hello world!\n");
    return 0;
}

static void helloworld_exit(void)
{
    printk("hello world bye\n");
}

module_init(helloworld_init);
module_exit(helloworld_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("HFauto");
MODULE_VERSION("V1.0");