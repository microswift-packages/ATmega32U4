import HAL

extension ATmega32U4.Cpu: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  public static var globalInterruptsEnabled: Bool {
    get { (`sreg`.registerValue & 0x80) == 0x80  }
    set { if newValue { `sreg`.registerValue |= 0x80 } else { `sreg`.registerValue &= (~0x80) } }
  }
}

extension ATmega32U4: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  public static var globalInterruptsEnabled: Bool {
    get { Cpu.globalInterruptsEnabled }
    set { Cpu.globalInterruptsEnabled = newValue }
  }
}
