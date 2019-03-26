ActiveAdmin.register RawDatum do
  permit_params :id_raw, :visit_time, :profile, :picture, :degree, 
      :first_name, :middle_name, :last_name, :from, :title, :company,
      :company_profile, :company_website, :personal_website, :email,
      :phone, :im, :twitter, :location, :industry, :my_tags, :sales_profile,
      :summary, :my_notes
  
  config.batch_actions = false
  
  actions :index

  index download_links: [:csv] do
    selectable_column
    id_column
    column :id_raw
    column :visit_time
    column :profile
    # column :picture
    column :degree
    column :first_name
    column :middle_name
    column :last_name
    column :from
    column :title
    column :company
    column :company_profile
    column :company_website
    column :personal_website
    column :email
    column :phone
    column :im
    column :twitter
    column :location
    column :industry
    column :my_tags
    # column :sales_profile
    # column :summary
    column :my_notes
    actions
  end

  ## Export csv
  csv do
    column("id") { |raw_datum| raw_datum.id_raw }
    column('Visit Time')  { |raw_datum| raw_datum.visit_time }
    column("Profile")  { |raw_datum| raw_datum.profile }
    column("Picture")  { |raw_datum| raw_datum.picture }
    column("Degree")  { |raw_datum| raw_datum.degree }
    column("First Name")  { |raw_datum| raw_datum.first_name }
    column("Middle Name")  { |raw_datum| raw_datum.middle_name }
    column("Last Name")  { |raw_datum| raw_datum.last_name }
    column("From")  { |raw_datum| raw_datum.from }
    column("Title")  { |raw_datum| raw_datum.title }
    column("Company")  { |raw_datum| raw_datum.company }
    column("CompanyProfile")  { |raw_datum| raw_datum.company_profile }
    column("CompanyWebsite")  { |raw_datum| raw_datum.company_website }
    column("PersonalWebsite")  { |raw_datum| raw_datum.personal_website }
    column("Email")  { |raw_datum| raw_datum.email }
    column("Phone")  { |raw_datum| raw_datum.phone }
    column("IM")  { |raw_datum| raw_datum.im }
    column("Twitter")  { |raw_datum| raw_datum.twitter }
    column("Location")  { |raw_datum| raw_datum.location }
    column("Industry")  { |raw_datum| raw_datum.industry }
    column("My Tags")  { |raw_datum| raw_datum.my_tags }
    column("SalesProfile")  { |raw_datum| raw_datum.sales_profile }
    column("Summary")  { |raw_datum| raw_datum.summary }
    column("My Notes")  { |raw_datum| raw_datum.my_notes }
  end

  ## Import
  active_admin_import validate: false,
  headers_rewrites:
  {
    id: 'id_raw',
    VisitTime: 'visit_time',
    Profile: 'profile',
    Picture: 'picture',
    Degree: 'degree',
    :'First Name'=> 'first_name',
    :'Middle Name'=> 'middle_name',
    :'Last Name'=> 'last_name',
    From: 'from',
    Title: 'title',
    Company: 'company',
    CompanyProfile: 'company_profile',
    CompanyWebsite: 'company_website',
    PersonalWebsite: 'personal_website',
    Email: 'email',
    Phone: 'phone',
    IM: 'im',
    Twitter: 'twitter',
    Location: 'location',
    Industry: 'industry',
    :'My Tags'=> 'my_tags',
    SalesProfile: 'sales_profile',
    Summary: 'summary',
    :'My Notes'=> 'my_notes',
  },
  before_import: proc {
    RawDatum.destroy_all
  }


end