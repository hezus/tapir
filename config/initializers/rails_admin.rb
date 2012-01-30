#         ooooooooo.              o8o  oooo                 .o.             .o8                     o8o
#         `888   `Y88.            `"'  `888                .888.           "888                     `"'
#          888   .d88'  .oooo.   oooo   888   .oooo.o     .8"888.      .oooo888  ooo. .oo.  .oo.   oooo  ooo. .oo.
#          888ooo88P'  `P  )88b  `888   888  d88(  "8    .8' `888.    d88' `888  `888P"Y88bP"Y88b  `888  `888P"Y88b
#          888`88b.     .oP"888   888   888  `"Y88b.    .88ooo8888.   888   888   888   888   888   888   888   888
#          888  `88b.  d8(  888   888   888  o.  )88b  .8'     `888.  888   888   888   888   888   888   888   888
#         o888o  o888o `Y888""8o o888o o888o 8""888P' o88o     o8888o `Y8bod88P" o888o o888o o888o o888o o888o o888o

# RailsAdmin config file. Generated on October 23, 2011 22:21
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  config.current_user_method { current_user } # auto-generated
  config.main_app_name = ['TAPIR', 'Admin']

  config.model RestResource do
    list do
      field :name do
        column_width 400
        formatted_value do
          value.html_safe
        end
      end
      field :updated_at do
        column_width 150
      end
    end
  end
  config.model Step do
    list do
      field :title do
        column_width 350
      end
      field :index do
        column_width 50
      end
      field :updated_at do
        column_width 150
      end
    end
  end
end
