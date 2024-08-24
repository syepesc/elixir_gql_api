defmodule ElixirGqlApiWeb.BlankCanvasLive do
  use ElixirGqlApiWeb, :live_view

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Home")

    {:ok, socket}
  end

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    <div class="flex flex-col gap-6 p-6">
      <div class="border-2">
        HOME
      </div>
      <div class="border-2">
        HOME  HOME  HOME  HOME  HOME  HOMEHOMEHOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME  HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME HOME
      </div>
      <div class="flex flex-row flex-wrap">
        <div class="border-2">
          HOMEHOME
        </div>
        <div class="border-2">
          HOMEHOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
        <div class="border-2">
          HOME
        </div>
      </div>
    </div>
    """
  end
end
