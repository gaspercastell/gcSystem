import { Routes, RouterModule } from '@angular/router';

/** Componente enrutable */
import { LoginComponent } from './_components/login.component'  
import { WelcomeClientComponent } from './_components/welcomeClient.component'
import { WelcomeAdminComponent } from './_components/welcomeAdmin.component'
/** Rutas asociadas a componentes */
const routes: Routes = [  
  { path: '', component: LoginComponent },
  { path: 'admin/welcome', component:WelcomeAdminComponent},
  { path: 'cliente/welcome', component:WelcomeClientComponent}
];

export const BasePath: String = '/api';
export const Routing = RouterModule.forRoot(routes);