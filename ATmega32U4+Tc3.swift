import HAL
// Adds ``HAL/TimerPeripheral`` conformance to the ``ATmega32U4/Tc3`` peripheral.

extension ATmega32U4.Tc3: MinimalTimerPeripheral {
  /// Provides access to the current counter value.
  public static var counter: UInt16 {
    get { .init(Self.`tcnt3`.registerValue) }
    set { Self.`tcnt3`.registerValue = .init(truncatingIfNeeded: newValue) }
  }
}
