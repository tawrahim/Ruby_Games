# This is my solution to the bank teller project
# on www.learnstreet.com
# Author: Tawheed Abdul-Raheem
# url: www.tawheedraheem.com

class BankTeller

	# create a new account and return its name. Password
	# is the supplied PIN of the account returned
	# Also establish an account balance
	# Basically return a hash of the information that was sent
	def add_account(name,password,accounts)
		balance = 0.0
		new_account = {"name" => name,"password" => password, "accounts" => accounts,"balance" => balance}
		return new_account
	end

	# This method gets the balance of the account
	def get_balance(accounts)
		accounts = {"balance"=>0}
		accounts["balance"]
		return accounts["balance"]
	end

	# This method adds amount to the supplied account
	def do_deposit(accounts,amount)

	end

	# This method withdraws money from the account
	def do_withdraw(accounts,amount)
	end

	# Transfers money from one bank account to the other
	# from the debtor to creditor. check for insufficient funds
	def do_transfer(debtor,creditor,amount)
		
	end
end

# Place all method calls here
accnt = BankTeller.new
