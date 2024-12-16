import HAL
// Adds ``HAL/TimerPeripheral`` conformance to the ``ATmega32U4/Tc1`` peripheral.

extension ATmega32U4.Tc1: MinimalTimerPeripheral {
  /// Provides access to the current counter value.
  public static var counter: UInt16 {
    get { .init(Self.`tcnt1`.registerValue) }
    set { Self.`tcnt1`.registerValue = .init(truncatingIfNeeded: newValue) }
  }
}
