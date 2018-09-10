class Book < ActiveFedora::Base
  # within app/models/book.rb
  has_many :pages
  property :title, predicate: ::RDF::Vocab::DC.title, multiple: false do |index|
    index.as :stored_searchable
  end
  property :author, predicate: ::RDF::Vocab::DC.creator, multiple: true do |index|
    index.as :stored_searchable
  end
end
