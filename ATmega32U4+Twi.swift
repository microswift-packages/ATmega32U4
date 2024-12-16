import HAL

extension ATmega32U4.Twi: Twi {
  /// Low level register conformance.
  /// We believe there's never multiple TWI so no need for detailed property
  /// breakouts.
}
// Adds ``HAL/TwiPeripheral`` conformance to the ``ATmega32U4/Twi`` peripheral.
