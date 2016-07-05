class Api::SearchablesController < ApplicationController
  def search
    #UGLY! should fix extra qurey at the end by writing uniq method
    limit = 10
    query = params[:query].downcase
    regexp = '^' + query
    while true
      results = Searchable.where("fname ~* ?", regexp).limit(limit)
      results.uniq!
      break if results.length >= 10
      results += Searchable.where("lname ~* ?", regexp).limit(limit - results.length)
      results.uniq!
      break if results.length >= 10
      results += Searchable.where("fullname ~* ?", query).limit(limit - results.length)
      results.uniq!
      break
    end
    arr = results.map {|obj| obj[:user_id]}
    users = User.find(arr)
    render json: users
  end
end
