class Calculator
  def add(*args)
    args.reduce(:+)
  end

  def subtract(*args)
    args.reduce(:-)
  end

  def multiply(*args)
    args.reduce(:*)
  end

  def divide(*args)
    args.reduce { |a, b| a / b.to_f }
  end
end
