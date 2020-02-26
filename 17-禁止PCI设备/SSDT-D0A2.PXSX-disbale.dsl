// disable D0A2.PXSX (SB0550)
DefinitionBlock ("", "SSDT", 2, "OCLT", "noRPxx", 0)
{
    External (_SB.PCI0.D0A2, DeviceObj)

    Scope (_SB.PCI0.D0A2)
    {
        OperationRegion (DE01, PCI_Config, 0x50, 1)
        Field (DE01, AnyAcc, NoLock, Preserve)
        {
                ,   1, 
                ,   3, 
            DDDD,   1
        }
    }
    
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            \_SB.PCI0.D0A2.DDDD = One
        }
    }
}
//EOF
