class IbanValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    record.errors.add(
      attribute,
      :invalid_iban,
      message: options[:message],
      value:   value,
    ) if value.blank? && !ISO::IBAN.valid?(value)
  end

end

module ActiveModel::Validations::HelperMethods

  def validates_iban_format_of(*attr_names)
    validates_with IbanValidator, _merge_attributes(attr_names)
  end

  alias_method :validates_iban_of, :validates_iban_format_of

end
