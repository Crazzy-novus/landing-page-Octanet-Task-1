import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { NavbarComponent } from "./components/navbar/navbar.component";
import { HeaderSectionComponent } from "./components/header-section/header-section.component";
import { CardSectionComponent } from "./components/card-section/card-section.component";

@Component({
    selector: 'app-root',
    standalone: true,
    templateUrl: './app.component.html',
    styleUrl: './app.component.css',
    imports: [RouterOutlet, NavbarComponent, HeaderSectionComponent, CardSectionComponent]
})
export class AppComponent {
  title = 'landing-page';
}
