class IbanValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    ISO::IBAN.validate(value).each do |error_key|
      record.errors.add(
        attribute,
        error_key,
        message: options[:message],
        value:   value,
      )
    end
  end

end

module ActiveModel::Validations::HelperMethods

  def validates_iban_format_of(*attr_names)
    validates_with IbanValidator, _merge_attributes(attr_names)
  end

  alias_method :validates_iban_of, :validates_iban_format_of

end
