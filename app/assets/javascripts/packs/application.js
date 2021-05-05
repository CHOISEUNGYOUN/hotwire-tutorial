import Rails from "@rails/ujs";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import "trix";
import "@rails/actiontext";
import { Turbo } from "@hotwired/turbo-rails";

window.Turbo = Turbo;
Rails.start();
ActiveStorage.start();
