/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3.aml, Wed Sep 13 16:52:23 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000019A (410)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00001000)
{
    External (_SB_.PCI0.SAT0, DeviceObj)

    Scope (\_SB.PCI0.SAT0)
    {
        Device (PRID)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Name (PBUF, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                })
                CreateDWordField (PBUF, Zero, PIO0)
                CreateDWordField (PBUF, 0x04, DMA0)
                CreateDWordField (PBUF, 0x08, PIO1)
                CreateDWordField (PBUF, 0x0C, DMA1)
                CreateDWordField (PBUF, 0x10, FLAG)
                Store (0xF0, PIO0)
                Store (0xF0, PIO1)
                Store (0x14, DMA0)
                Store (0x14, DMA1)
                Store (0x1F, FLAG)
                Return (PBUF)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (MAST)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (SLAV)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }

        Device (SECD)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Name (PBUF, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                })
                CreateDWordField (PBUF, Zero, PIO0)
                CreateDWordField (PBUF, 0x04, DMA0)
                CreateDWordField (PBUF, 0x08, PIO1)
                CreateDWordField (PBUF, 0x0C, DMA1)
                CreateDWordField (PBUF, 0x10, FLAG)
                Store (0xF0, PIO0)
                Store (0xF0, PIO1)
                Store (0x14, DMA0)
                Store (0x14, DMA1)
                Store (0x1F, FLAG)
                Return (PBUF)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (MAST)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (SLAV)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }
    }
}

