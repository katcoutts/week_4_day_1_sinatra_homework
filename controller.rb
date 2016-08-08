require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/wordformatter' )
require( 'json' )
# NB if we require sinatra it looks for the erb file so we don't need to recruit it. 

get('/') do
  erb( :home )
end

get('/address') do
    content_type( :json )
    result = {
      address: '3 ARGYLE HOUSE',
      building: 'CODEBASE',
      postcode: 'e13 zqf',
      phone: '0131558030'
    }
    postcode = Wordformatter.new(result[:postcode])
    result[:postcode] = postcode.upcase()
    return result.to_json()
end

get('/camelcase/:string') do 
   string = Wordformatter.new(params[:string])
   @camelcase = string.camel_case()
   erb(:camelcase) 
end 
