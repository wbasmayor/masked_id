MaskedId

A library that masks the original ID of your ActiveRecord. It's useful when you don't want
to expose the actual ID of your records to users. Each ActiveRecord using the library will
also get it's own unique masked id making sure not all actual numerical id will have 
the same masked id value.


# Installation

Include on your Gemfile. 
gem 'masked_id'


## Usage
  Add 'mask_id' in the model you want it's id to be masked with.

  Example.

  class Sample
    mask_id
  end
   

  In your views, simply use sample.masked_id instead of sample.id or sample.to_params.
  This will mask the original id.

  On your controllers, to find the record with the masked id, use Sample.find_by_masked_id(masked_id)


