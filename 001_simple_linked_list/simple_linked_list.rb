require_relative 'element'
class SimpleLinkedList
  def initialize(array = [])
    @head = nil
    array.each do |element|
      push(Element.new(element))
    end
  end

  def push(element)
    tap do
      element.next = @head
      @head = element
    end
  end

  def pop
    return nil unless @head

    element = @head
    @head = @head.next
    element
  end

  def to_a
    return [] unless @head

    collection = []
    while element = pop
      collection << element
    end
    collection.compact.map(&:datum)
  end

  def reverse!
    new_list = []
    new_list << pop until @head.nil?

    new_list.each { |element| push(element) }

    self
  end
end
# push
# pop
# reverse!
# to_a
