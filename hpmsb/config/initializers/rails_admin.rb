RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method &:current_admin


	config.model About do
	   edit do
	    field :title
	    field :body, :ck_editor
	    end
    end

	config.model Achievement do
	   edit do
	    field :achievement
	    field :organizer, :ck_editor
	    field :champ, :enum do
	    	enum do 
	    		['Juara 1', 'Juara 2', 'Juara 3', 'Juara Umum']
	    	end
	    end
	    field :date
	    end
    end

    config.model Agenda do
	   edit do
	   	field :agenda_id
	    field :date
	    field :event, :ck_editor
	    field :venue, :ck_editor
	    end
    end


    config.model 'Alumni' do
	   edit do
	   	field :alumni_id
	   	field :full_name
	   	field :place_of_birth
	   	field :birthday
	   	field :ksb_address, :ck_editor
		field :sub_district, :enum do
			enum do
				['Brang Rea', 'Brang Ene', 'Jereweh', 'Maluk', 'Seteluk', 'Sekongkang',
				'Poto Tano', 'Taliwang']
			end
		end
		field :address, :ck_editor
		field :gender, :enum do
			enum do
			['Laki-Laki', 'Perempuan']
			end
		end
		field :email
		field :phone
		field :pin_bb
		field :college
		field :major
		field :avatar, :paperclip do
        thumb_method :thumb
      		end
		end

    end

	config.model Division do
	   edit do
	    field :division_id
	    field :program
	    field :start_date
	    field :end_date
	    field :cost
	    field :status, :enum do
	    	enum do
	    		['Terlaksana', 'Belum Terlaksana', 'Tidak Terlaksana']
	    	end
	    end
	    end
    end

   	config.model Gallery do
	   edit do
	    field :title
	    field :description, :ck_editor
		field :image
	    end
    end

   	config.model Guest do
	   edit do
	    field :guest_id
	    field :full_name
		field :address, :ck_editor
		field :cek_in
		field :cek_out
		field :necessary, :ck_editor
		field :price
	    end
    end



   	config.model History do
	   edit do
	    field :title
		field :history, :ck_editor
	    end
    end

   	config.model Inventory do
	   edit do
	    field :inventory_id
	    field :name
		field :number,  :enum do
			enum do
				['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
			end
		end
		field :status, :enum do
			enum do 
				['Ada', 'Tidak Ada']
			end
		end
	   end
    end


   	config.model Journal do
	   edit do
	   	field :issn
	    field :volume
	    field :title
		field :authors, :ck_editor
		field :abstract, :ck_editor
		field :date
	    end
    end


   config.model Member do
	   edit do
	   	field :member_id
	   	field :full_name
	   	field :place_of_birth
	   	field :birthday
	   	field :ksb_address, :ck_editor
		field :sub_district, :enum do
			enum do
				['Brang Rea', 'Brang Ene', 'Jereweh', 'Maluk', 'Seteluk', 'Sekongkang',
				'Poto Tano', 'Taliwang']
			end
		end
		field :jogja_address, :ck_editor
		field :gender, :enum do
			enum do
			['Laki-Laki', 'Perempuan']
			end
		end
		field :phone
		field :pin_bb
		field :college
		field :major
		field :avatar, :carrierwave
		end
    end

	config.model Post do
	   edit do
	    field :title
	    field :body, :ck_editor
	    end
    end

   	config.model Profile do
	   edit do
	   	field :profile_id
	    field :title
	    field :address, :ck_editor
	    field :vision, :ck_editor
	    field :mission, :ck_editor
	    end
    end
end
