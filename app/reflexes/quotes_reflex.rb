class QuotesReflex < StimulusReflex::Reflex
  def destroy
    id = element.dataset[:id]
    Quote.find(id).destroy
    cable_ready['hello_quotes'].remove(
      selector: "#quote-#{id}"
    )
  end
end