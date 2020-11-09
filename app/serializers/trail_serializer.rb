class TrailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :forecast, :location, :trails
end
