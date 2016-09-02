if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_jorlSdkOLXxfzlYUu6ITiNil',
    :secret_key => 'sk_test_aJNuauiCdFZvc2icPPJOIEjO'
  }
end

Stripe.api_key = Rails.configuration.stripe[:sk_test_aJNuauiCdFZvc2icPPJOIEjO]