require "z15021sn_binary_prefix_bytes/version"

class String
  def z15021sn_binary_prefix_bytes
    /^(\d+\.*\d*)((Ki*B)|(Mi*B)|(Gi*B)|(Ti*B)|(Pi*B)|(Ei*B)|(Zi*B)|(Yi*B))$/ =~ self
    return nil if $~ == nil

    value = $1 == nil ? nil : $1.to_f
    return nil if value == nil

    exponent = nil
    ($~[3..10]).each_with_index {|m, i| exponent = i + 1 if m != nil }
    return nil if exponent == nil

    value = value * 2 ** (10 * exponent)
    value = /^\d+\.0$/ =~ value.to_s ? value.to_i : value
  end
end
