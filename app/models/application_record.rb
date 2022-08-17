class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  APP_THEME = %w(
    quartz
    cerulean
    darkly
    litera
    materia
    vapor
    sandstone
  )
end
