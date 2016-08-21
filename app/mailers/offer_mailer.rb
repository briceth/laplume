class OfferMailer < ApplicationMailer
  def creation_confirmation(offer)
    @offer = offer

    mail(
      to:       @offer.user.email,
      subject:  "offer #{@offer.status} created!"
    )
  end
end
