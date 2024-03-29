defmodule MyApp.EdgeDB do
  use EdgeDBEcto,
      name: __MODULE__,
      queries: true,
      otp_app: :my_app

  @codecs [
    # LiveBeats.EdgeDB.Codecs.SongStatus,
    # LiveBeats.EdgeDB.Codecs.INET
  ]

  def child_spec(_opts \\ []) do
    %{
      id: __MODULE__,
      start: {EdgeDB, :start_link, [[name: __MODULE__, codecs: @codecs]]}
    }
  end
end
