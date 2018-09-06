class BonusDrink

  BONUS_AMOUNT = 3

  def self.total_count_for(amount)
    total_count = amount # 飲んだ合計本数

    while amount >= BONUS_AMOUNT # 空き瓶が３本以下になるまで繰り返す
      bonus_count = amount / BONUS_AMOUNT #おまけの瓶の本数
      amount = amount % BONUS_AMOUNT + bonus_count # おまけを貰うのに使わない空き瓶の本数
      total_count += bonus_count # 空き瓶の本数の合計
    end

    total_count
  end
end

puts BonusDrink::total_count_for(100)
