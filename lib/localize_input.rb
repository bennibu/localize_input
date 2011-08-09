# LocalizeInput
module LocalizeInput
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    # Use this in you ActiveRecord class to replace the local seperator with database format
    # e.g.: localize_input_of :price
    def localize_input_of(*attr_names)
      attr_names.flatten.each do |attr|
        define_method "#{attr}=" do |input|
          begin
            seperator = I18n.t("separator", :scope => "number.format")
            delimiter = I18n.t("delimiter", :scope => "number.format")
            input.gsub!(delimiter, "") if input.match(/\d+#{Regexp.escape(delimiter)}+\d+#{Regexp.escape(seperator)}+\d+/) # Remove delimiter
            input.gsub!(seperator, ".") # Replace seperator with db compatible character
            self[attr] = input
          rescue
            self[attr] = input
          end
        end
      end
    end
  end
end

# Extend ActiveRecord with new class method
ActiveRecord::Base.send :include, LocalizeInput
