class Vendor < ApplicationRecord
  #CHANGED
  START_YEAR           = 1935
  VALID_DATES          = DateTime.new(START_YEAR)..DateTime.now
  ZIP_CODE_LENGTH      = 5
  MIN_STRING_LENGTH    = 3
  MAX_STRING_LENGTH    = 75
  DB_MAX_STRING_LENGTH = 255

  ### ### ### ### ### ### 
  # Relationships
  ### ### ### ### ### ### 
  belongs_to :user, dependent: :destroy 
  #If you're having issues saving with nil data, then use this
  #belongs_to :user, optional: true
  
  
  ### ### ### ### ### ### 
  # Validations
  ### ### ### ### ### ### 
  
  validates_inclusion_of :gender, :in => ['m', 'f', 'o'], :allow_nil => true
  
  validates_inclusion_of :age, :in => 13..120, :message => "must be older than 13 years of age."
    
  validates :gender, :birthdate, :occupation, :city, :state, :zipcode, 
            :presence => true 
    
  validates :first_name, 
            :length => { :in => MIN_STRING_LENGTH..MAX_STRING_LENGTH }, 
            :presence => true
  
  validates :last_name, 
            :length => { :in => MIN_STRING_LENGTH..MAX_STRING_LENGTH }, 
            :presence => true

  validate :password_cannot_have_invalid_character  

  # add any other characters you'd like to disallow inside the [ brackets ]
  # metacharacters [, \, ^, $, ., |, ?, *, +, (, and ) need to be escaped with a \  
  # http://stackoverflow.com/questions/2629422/rails-validating-full-name
  validates :first_name,  
            :presence => true,
            :format => { :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
            :uniqueness => { :case_sensitive => false }

  validates :last_name,
            :presence => true,
            :format => { :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
            :uniqueness => { :case_sensitive => false }

end


