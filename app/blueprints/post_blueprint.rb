class PostBlueprint < Blueprinter::Base
    # id of post record
    identifier :id
    #default values we want to pass
    fields :user_id, :content, :imagePath

    view :create do
        fields :created_at
    end
end