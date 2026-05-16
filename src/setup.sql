-- ========================================
-- Organization Table
-- ========================================
CREATE TABLE IF NOT EXISTS organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

-- ========================================
-- Project Table
-- ========================================
CREATE TABLE IF NOT EXISTS project (
    project_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL REFERENCES organization(organization_id),
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    date DATE NOT NULL
);

-- Sample organization data
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
    ('BrightFuture Builders', 'A group dedicated to building safer communities through hands-on volunteer work.', 'info@brightfuture.org', 'brightfuture-logo.png'),
    ('GreenHarvest Growers', 'A community farming initiative focused on sustainable food distribution.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
    ('UnityServe Volunteers', 'Volunteers serving local families through education and outreach programs.', 'hello@unityserve.org', 'unityserve-logo.png');

-- Sample project data
INSERT INTO project (organization_id, title, description, location, date)
VALUES
    (1, 'Park Cleanup', 'Join us to clean up local parks and make them beautiful again.', 'Riverside Park', '2026-06-12'),
    (1, 'Home Repair Day', 'Help renovate homes for families in need with basic repairs and painting.', 'Maple Street Homes', '2026-06-20'),
    (1, 'Neighborhood Garden Build', 'Build and plant a community garden for local residents.', 'Elm Community Garden', '2026-07-05'),
    (1, 'Trail Restoration', 'Restore hiking trails and remove debris for safe summer use.', 'Lakeside Trail', '2026-07-18'),
    (1, 'Senior Support Outreach', 'Visit and assist seniors with household tasks and companionship.', 'Sunnyview Retirement Center', '2026-08-02'),
    (2, 'Food Drive', 'Help collect and distribute healthy food to community food banks.', 'Central Food Bank', '2026-06-15'),
    (2, 'Community Farm Day', 'Volunteer at the farm to plant and harvest crops for donation.', 'GreenHarvest Farm', '2026-06-28'),
    (2, 'Farmers Market Support', 'Help organize and support a local farmers market for families.', 'Downtown Market Plaza', '2026-07-10'),
    (2, 'Urban Garden Workshop', 'Teach and build urban gardens for neighborhood residents.', 'City Library Community Room', '2026-07-25'),
    (2, 'Food Packaging Event', 'Package meals and distribute them to families in need.', 'Harvest Center', '2026-08-08'),
    (3, 'Community Tutoring', 'Volunteer to tutor students in reading, math, and science.', 'Northside School', '2026-06-18'),
    (3, 'Youth Mentoring Night', 'Provide mentorship and support to local youth.', 'City Recreation Center', '2026-07-03'),
    (3, 'School Supply Drive', 'Collect and distribute school supplies to students in need.', 'Community Center', '2026-07-22'),
    (3, 'Neighborhood Clean Sweep', 'Help clean neighborhood streets and improve community spaces.', 'Hillview District', '2026-08-01'),
    (3, 'Family Wellness Fair', 'Support a free wellness event with activities and resources.', 'Parkside Pavilion', '2026-08-15');
