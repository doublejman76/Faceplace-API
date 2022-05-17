module Posts
    def self.new_post(params, current_user)
        # STEP 1 - create post and define variable
        post = current_user.posts.new(params)
        # STEP 2 - save
        # post.save!
        # STEP 3 - return errors if book is not valid
        return ServiceContract.error("Error saving post") unless post.save
        # STEP 4 - otherwise, return success
        return ServiceContract.success(post)
    end

    def self.update_post(post_id, params)
        # Step 1 - get the book we need to update with id
        post = Post.find(post_id)
        # Step 2 - update
        # Step 3 - return error if update was unsuccessful
        return ServiceContract.error("Post saved unsuccessfully") unless post.update(params)
        # Step 4 - return success if update was successful
        ServiceContract.success(post)
    end
end