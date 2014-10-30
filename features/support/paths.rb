module NavigationHelpers
  
  # Extend the standard PathMatchers with your own paths
  # to be used in your features.
  # 
  # The keys and values here may be used in your standard web steps
  # Using:
  #
  #   When I go to the "rad_social" admin page
  # 
  # would direct the request to the path you provide in the value:
  # 
  #   admin_rad_social_path
  # 
  PathMatchers = {} unless defined?(PathMatchers)
  PathMatchers.merge!({
    # /rad_social/i => 'admin_rad_social_path'
  })
  
end

World(NavigationHelpers)