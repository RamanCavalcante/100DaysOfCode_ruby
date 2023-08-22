class Acronym
  def self.abbreviate(pharse)
    pharse
      .split(/\W/)
      .map(&:chr)
      .join
      .upcase
  end
end
