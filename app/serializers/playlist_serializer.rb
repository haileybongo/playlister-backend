class PlaylistSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :description
  end
  