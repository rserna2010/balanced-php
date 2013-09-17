import random

request = {
  'uri': ctx.marketplace.credits_uri,
  'payload': {
    'bank_account': {
      'name': 'Johann Bernoulli',
      'account_number': random.choice(['9900000000', '9900000001']),
      'routing_number': '121000358',
      'type': 'checking',
    },
    'amount': 10000
  }
}
