#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(void)
{
    uint8_t *p;
    uint32_t var;

    var = 0x12345678;
    p = (uint8_t *)&var;
    printf("var = 0x%x\n", var);
    printf("%02x %02x %02x %02x\n", p[0], p[1], p[2], p[3]);
    return 0;
}
