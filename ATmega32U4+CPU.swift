import HAL

extension ATmega32U4.Cpu: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  public static var globalInterruptsEnabled: Bool {
    get { .init(bitfieldValue: `sreg`.`i`.bitfieldValue) }
    set { `sreg`.`i` = .init(bitfieldValue: newValue.bitfieldValue) }
  }
}

extension ATmega32U4: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  public static var globalInterruptsEnabled: Bool {
    get { Cpu.globalInterruptsEnabled }
    set { Cpu.globalInterruptsEnabled = newValue }
  }
}
