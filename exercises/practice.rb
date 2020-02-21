# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – the first 
# transaction is the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 21000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "ben", to_user: "nathan", amount: 7000 },
  { from_user: "evan", to_user: "nathan", amount: 400 },
  { from_user: "ben", to_user: "nathan", amount: 1500 },
  { from_user: "nathan", to_user: "ben", amount: 4500 },
  { from_user: "nathan", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 8000
# Evan's KelloggCoin balance is 10350
# Nathan's KelloggCoin balance is 2650

balances = {}
    for transaction in blockchain
        from_user = transaction[:from_user]
        to_user = transaction[:to_user]
        amount = transaction [:amount]

        balances[to_user] ||=0
        balances[from_user] ||=0

        balances[to_user] = balances[to_user] + amount
        balances[from_user] = balances[from_user] - amount
    end

# puts balances

for balance in balances
    unless balance[0].nil?
        puts "#{balance[0]}'s KelloggCoin balance is #{balance[1]}"
    end
end
    