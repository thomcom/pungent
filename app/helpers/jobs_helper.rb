# Methods added to this helper will be available to all templates in the application.
module JobsHelper
   def new_job_id
      year = Time.new.year
   end
   def getJobs(user)
     if user.is_admin?
       @jobs = Job.all
     else
       @jobs = Job.find_all_by_rep(user.repID)
     end
   end
end
