class QuotesReflex < StimulusReflex::Reflex
  def destroy
    id = element.dataset[:id]
    Quote.find(id).destroy
    morph :nothing
  end
end