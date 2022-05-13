module Api
    module V1
        class PostsController < Api::V1::ApplicationController

            # create
            def create
              # STEP 1 - get a result, result will be either failure or success
              # create a post
              result = Posts.new_post(post_params, @current_user)
              # STEP 2 - return a failure response depending on what result is
              # render_error(errors: "Post was not saved successfully") and return unless result.success?

              # STEP 3 - define a payload
              # payload = {
              #   post: result.payload 
              #  }
              # Step 4 - return a successful response with the payload
              # render_success(payload: payload)
            end

            # update
            def update

            end

            # delete
            def delete

            end

            # my posts - current user posts
            def my_posts

            end

            private
            def post_params
              params.require(:post).permit(:user_id, :content, :imagePath)
            end

        end
    end
end