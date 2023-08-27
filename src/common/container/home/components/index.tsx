import dynamic from 'next/dynamic';

const BannerComponent = dynamic(() => import('./banner-component'));
const BottomSectionComponent = dynamic(() => import('./bottom-section-component'));

const SupportingActivities = dynamic(() => import('./supporting-activities'));
const SupporttingActivitiesCardComponent = dynamic(() => import('./supporting-activities/card'));

const PrimaryActivities = dynamic(() => import('./primary-activities'));
const PrimaryActivitiesCardComponent = dynamic(() => import('./primary-activities/card'));

export {
  BannerComponent as Banner, BottomSectionComponent as BottomSection,
  SupportingActivities, SupporttingActivitiesCardComponent,
  PrimaryActivities, PrimaryActivitiesCardComponent
};