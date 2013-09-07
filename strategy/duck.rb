class QuackBehavior
  def quack(phrase = 'qua')
    puts phrase
  end
end

class Quack < QuackBehavior
  def quack
    super('.......quack')
  end
end

class Squeak < QuackBehavior
  def quack
    super('squeak............')
  end
end
  
    

class Duck
  attr_accessor :quackBehavior
  
  def initialize
    @quackBehavior = QuackBehavior.new
  end

  def display
    print 'Duck'
  end

  def performQuack
    @quackBehavior.quack
  end
end


class SuperDuck < Duck
  def initialize
    @quackBehavior = Squeak.new
  end
end

class CoolDuck < Duck
  def initialize
    @quackBehavior = Quack.new
  end
end
