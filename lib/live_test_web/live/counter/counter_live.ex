defmodule LiveTestWeb.CounterLive do
  use Phoenix.LiveView

  # render function not needed if properly named template is in the same folder

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :val, 0)}
  end

  def handle_event("inc", _, socket) do
    {:noreply, update(socket, :val, &(&1 + 1))}
  end

  def handle_event("dec", _, socket) do
    {:noreply, update(socket, :val, &(&1 - 1))}
  end
end
