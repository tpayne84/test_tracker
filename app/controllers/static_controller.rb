class StaticController < ApplicationController
	def index
	
		courses = ["Abrasive Blasting","Aerial Lifts","Asbestos Awareness","GFCI","Behavior Based Safety","Benzene Awareness","Bloodborne Pathogens","Confined Space / Permit Confined Space","Cranes","Disciplinary Program","Driving Safety","Electrical Safety Awareness","Fall Protection","Fatigue Management","Fire Protection / Extinguishers","First Aid","Forklift & Industrial Trucks","Gas Hazards","General Waste Management","Hand AND/OR Power Tools","Hazard Communication - (HAZCOM)","Hazard Identification & Risk Assessment","Hazardous Waste Operations / Emergency Response","Hydrogen Sulfide - H2S","In Plant Rail Safety","Incident Investigation and Reporting","Ladder Safety","Lead","Lead Awareness","Lockout / Tagout","Manual Lifting","Mobile Equipment","Natural Occurring Radioactive Material - (NORM)","Noise Awareness","Noise Exposure / Hearing Conservation","Personal Protective Equipment / Assessments - (PPE)","Respiratory Protection","Rigging Material Handling","Scaffolds","Short Service Employee (SSE)","Spill Prevention / Response","Stop Work Authority","Subcontractor Management Plan","Trenching / Shoring / Excavations","Welding, Cutting, Hot Work","Working Alone"]

		courses.each do |c|
			Course.create(:name => c)
		end

		u = User.first
		courses = Course.all

		dates = ["4/13/09","3/23/09","3/23/09","5/18/09","3/23/11","5/11/09","3/2/09","5/25/09","5/4/09","3/3/13","5/11/10","3/9/09","3/16/09","4/13/11","3/2/09","6/7/09","3/16/11","4/16/11","4/20/11","3/9/09","1/26/09","5/18/11","5/14/11","6/7/09","4/27/11","3/30/11","1/12/09","1/19/09","1/19/01","6/14/09","3/30/01","5/18/11","3/30/11","6/14/10","3/30/09","4/27/09","5/18/09","4/20/09","4/6/09","1/12/11","6/7/11","1/26/11","5/18/11","3/16/09","5/11/09","3/9/11"]
		dates.each do |d|
			pd = Date.parse d
			Record.create(:course_id => courses[0].id, :score => 100, :pass => true, :date_completed => pd, :user_id => u.id)
		end
		
		@val = "Success"
	end
end
