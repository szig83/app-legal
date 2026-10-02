# The github-pages gem pins Liquid 4.0.3, which still calls the taint API
# removed in Ruby 3.2. Local preview only; GitHub's own build does not use this.
class Object
  def tainted? = false
  def taint = self
  def untaint = self
end
