namespace :vets do
  task :import=>:environment do 
    ['Bob', 'Susan'].each do |vet|
      Vet.create(:name=>vet, :address=>'123 fake st', :city=>'rochester', :state=>'ny', :degree=>'MIT', :years=>1, :zip=>34479)
    end
  end
end
