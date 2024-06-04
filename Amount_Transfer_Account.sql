select account.name as name,
	SUM(transaction.amount) as total_amount
from account
inner join transaction on transaction.account_id = account.account_code
where date_part('MONTH', transaction.transaction_date) = 5
group by name;