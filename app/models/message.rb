class Message < ApplicationRecord

  def as_json(*)
    {
      id: id,
      content: content
    }
  end

end
