{"filter":false,"title":"order.rb","tooltip":"/app/models/order.rb","ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":17,"column":0},"end":{"row":17,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"7097951afc096bdda843d0eed022e689558eac65","undoManager":{"mark":3,"position":3,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":32},"end":{"row":1,"column":0},"action":"insert","lines":["",""]},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["",""]},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":4},"end":{"row":14,"column":3},"action":"insert","lines":["attr_accessor :stripe_card_token","","def save_with_payment","  if valid?","    customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)","    self.stripe_customer_token = customer.id","    save!","  end","rescue Stripe::InvalidRequestError => e","  logger.error \"Stripe error while creating customer: #{e.message}\"","  errors.add :base, \"There was a problem with your credit card.\"","  false","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":3},"end":{"row":15,"column":0},"action":"insert","lines":["",""]}]}]]},"timestamp":1429760657000}