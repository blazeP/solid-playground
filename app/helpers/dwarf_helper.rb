module DwarfHelper
  def district_name(name)
    name.split("_").map(&:capitalize).join(' ')
  end
end
